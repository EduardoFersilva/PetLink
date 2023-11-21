package br.com.petlink.servlet;


import br.com.petlink.dao.PetDao;
import br.com.petlink.model.Pet;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create-pet")
public class CreatePetServlet  extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("petz.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Map<String, String> parameters = uploadImage(request);
        String id = parameters.get("id");
        String name = parameters.get("pet-name");
        String tipo = parameters.get("pet-tipo");
        String breed = parameters.get("pet-breed");
        String porte = parameters.get("pet-porte");
        String sexo = parameters.get("pet-sexo");
        String idade = parameters.get("pet-idade");
        String description = parameters.get("pet-description");
        String image = parameters.get("image");
        String idUser = String.valueOf(request.getSession().getAttribute("id"));
        Pet pet = new Pet(id,name,tipo,breed,porte,sexo,idade,description,image,idUser);
       PetDao petDao = new PetDao();
        if (id.isBlank()) {
            petDao.createPet(pet);
        } else {
            petDao.updatePet(pet);
        }
        response.sendRedirect("/find-all-pets");
    }

    private Map<String,String> uploadImage(HttpServletRequest httpServletRequest)  {
        HashMap<String, String> parameters = new HashMap<>();
        if(isMultipartContent(httpServletRequest)) {
            try{
                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);
                for (FileItem item : fileItems){
                    checkFieldType(item,parameters);
                }
            } catch ( Exception e) {
                parameters.put("image", "img/default-pet.jpg");
            }
            return parameters;
        }
        return parameters;
    }
    private void checkFieldType(FileItem fileItem , Map requestParameters) throws Exception {
        if (fileItem.isFormField()){
            requestParameters.put(fileItem.getFieldName(),fileItem.getString());
        } else {
          String fileName = processUploadeFile(fileItem);
          requestParameters.put("image",fileName);
        }
    }
    private String processUploadeFile(FileItem fileItem) throws Exception {
      Long currentTime = new Date().getTime();
      String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace("",""));
      String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);
      fileItem.write(new File(filePath));
        return fileName;
    }

}
