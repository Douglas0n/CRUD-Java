package recursos;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletProcess", urlPatterns = {"/servletProcess"})
public class servletProcess extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            //Teste lógico para os formulários
            switch (request.getParameter("formulario")) {
                //Bloco condicional: cadastro de clientes e atualização
                case "Salvar": case "Atualizar":
                    {
                    //A expressao case verifica qual botao foi pressionado
                    //e executa os comandos necessarios depois devolve
                    //o processamento atraves do requestDispatcher
                        try {
                            Cliente formulario = new Cliente();
                            AcessDao cadastro = new AcessDao();
                            int id, fone, dado;
                            String nome, sexo;
                            double renda;
                            
                            id = Integer.parseInt(request.getParameter("id"));
                            nome = request.getParameter("nome");
                            fone = Integer.parseInt(request.getParameter("fone"));
                            sexo = request.getParameter("sexo");
                            renda = Double.parseDouble(request.getParameter("renda"));
                            formulario.setId(id);
                            formulario.setNome(nome);
                            formulario.setTelefone(fone);
                            formulario.setSexo(sexo);
                            formulario.setRenda(renda);
                            
                            if (request.getParameter("formulario").equals("Salvar")){
                                cadastro.conectar();
                                dado = cadastro.cadastrar(formulario);
                                cadastro.desconectar();
                                
                                if (dado==1){
                                    RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro.jsp");
                                    request.setAttribute("resposta", 
                                            "<nav class=\"navbar-fixed-bottom\">\n" +
                                                "<div class=\"container\">\n" +
                                                    "<div class=\"alert alert-success\" role=\"alert\">Dados cadastrados com sucesso!</div>\n" +
                                               "</div>\n" +
                                            "</nav>");
                                    dispatcher.forward(request, response);
                                    
                                } else if (dado==0) {
                                    RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro.jsp");
                                    request.setAttribute("resposta", 
                                            "<nav class=\"navbar-fixed-bottom\">\n" +
                                        "<div class=\"container\">\n" +
                                            "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro!</strong> "
                                            + "Verifique se digitou os dados corretamente e tente de novo.</div>\n" +
                                        "</div>\\\n" +
                                    "</nav>");
                                    dispatcher.forward(request, response);
                                }
                                
                            } else if (request.getParameter("formulario").equals("Atualizar")){
                                cadastro.conectar();
                                cadastro.alterar(formulario);
                                cadastro.desconectar();
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro.jsp");
                                request.setAttribute("resposta", 
                                    "<nav class=\"navbar-fixed-bottom\">\n" +
                                        "<div class=\"container\">\n" +
                                            "<div class=\"alert alert-success\" role=\"alert\">Dados cadastrados com sucesso!</div>\n" +
                                       "</div>\n" +
                                    "</nav>");
                                dispatcher.forward(request, response);
                            }
                            
                        } catch (NullPointerException | NumberFormatException x){
                            RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro.jsp");
                                    request.setAttribute("resposta", 
                                            "<nav class=\"navbar-fixed-bottom\">\n" +
                                        "<div class=\"container\">\n" +
                                            "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro!</strong> "
                                            + "Verifique se digitou os dados corretamente e tente de novo.</div>\n" +
                                        "</div>\n" +
                                    "</nav>");
                                    dispatcher.forward(request, response);
                                }
                        break;
                    }
                    
                //Bloco condicional: busca por clientes e alterar cadastros
                case "Buscar": case "Alterar":
                    {
                        try{
                            Cliente formulario = new Cliente();
                            AcessDao cadastro = new AcessDao();
                            int chave = Integer.parseInt(request.getParameter("id"));
                            formulario.setId(chave);
                            
                            cadastro.conectar();
                            Cliente resultado = cadastro.pesquisar(formulario);
                            cadastro.desconectar();
                            String id, nome, telefone, sexo, renda;
                            id = Integer.toString(resultado.getId());
                            nome = resultado.getNome();
                            telefone = Integer.toString(resultado.getTelefone());
                            sexo = resultado.getSexo();
                            renda = Double.toString(resultado.getRenda());
                            
                            if (request.getParameter("formulario").equals("Buscar")){
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/busca.jsp");
                                request.setAttribute("id", id);
                                request.setAttribute("nome", nome);
                                request.setAttribute("telefone", telefone);
                                request.setAttribute("sexo", sexo);
                                request.setAttribute("renda", renda);
                                dispatcher.forward(request, response);
                                
                            } else if (request.getParameter("formulario").equals("Alterar")){
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/cadastro-alterar.jsp");
                                request.setAttribute("id", id);
                                request.setAttribute("nome", nome);
                                request.setAttribute("telefone", telefone);
                                request.setAttribute("sexo", sexo);
                                request.setAttribute("renda", renda);
                                dispatcher.forward(request, response);
                            }
                            
                        } catch (NullPointerException | NumberFormatException x){
                            RequestDispatcher dispatcher = request.getRequestDispatcher("/manutencao.jsp");
                            request.setAttribute("resposta", 
                                    "<nav class=\"navbar-fixed-bottom\">\n" +
                                        "<div class=\"container\">\n" +
                                            "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro!</strong> "
                                            + "É necessario que digite um ID valido antes de continuar.</div>\n" +
                                        "</div>\\\n" +
                                    "</nav>");
                            dispatcher.forward(request, response); 
                        }                         
                        break;
                    }
                    
                //Bloco condicional: Exibir todos os clientes
                case "Exibir Tudo":
                    {
                        ArrayList<Cliente> resultado;
                        AcessDao cadastro = new AcessDao();   
                        cadastro.conectar();
                        resultado = cadastro.consulta();
                        cadastro.desconectar();
                        RequestDispatcher dispatcher = request.getRequestDispatcher("/exibir-tudo.jsp");
                        request.setAttribute("resultado", resultado);
                        dispatcher.forward(request, response);
                        break;
                    }           
                    
                //Bloco condicional: Excluir cliente
                case "Excluir":
                    {
                        try{
                            AcessDao cadastro = new AcessDao();
                            int excluir = Integer.parseInt(request.getParameter("id"));
                            int confirm;
                        
                            cadastro.conectar();
                            confirm = cadastro.excluir(excluir);
                            cadastro.desconectar();
                            
                            if(confirm==0){
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/manutencao.jsp");
                                request.setAttribute("resposta", 
                                        "<nav class=\"navbar-fixed-bottom\">\n" +
                                            "<div class=\"container\">\n" +
                                                "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro!</strong> "
                                                + "ID não encontrado, digite um ID valido.</div>\n" +
                                            "</div>\\\n" +
                                        "</nav>");
                                dispatcher.forward(request, response); 
                                
                            }else{
                                RequestDispatcher dispatcher = request.getRequestDispatcher("/manutencao.jsp");
                                request.setAttribute("resposta", 
                                        "<nav class=\"navbar-fixed-bottom\">\n" +
                                            "<div class=\"container\">\n" +
                                                "<div class=\"alert alert-success\" role=\"alert\"><strong>Exluido!</strong> "
                                                + "Os dados foram excluidos com sucesso.</div>\n" +
                                            "</div>\n" +
                                        "</nav>");
                                dispatcher.forward(request, response); 
                            }
                            
                            } catch (NullPointerException | NumberFormatException x){
                            RequestDispatcher dispatcher = request.getRequestDispatcher("/manutencao.jsp");
                            request.setAttribute("resposta", 
                                    "<nav class=\"navbar-fixed-bottom\">\n" +
                                        "<div class=\"container\">\n" +
                                            "<div class=\"alert alert-danger\" role=\"alert\"><strong>Erro!</strong> "
                                            + "É necessario que digite um ID valido antes de continuar.</div>\n" +
                                        "</div>\\\n" +
                                    "</nav>");
                            dispatcher.forward(request, response); 
                        }  
                        break;
                    }
                default:
                    break; 
            }
        }
    }
}
