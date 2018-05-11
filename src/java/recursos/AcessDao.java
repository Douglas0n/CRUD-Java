/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package recursos;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import static javax.swing.JOptionPane.ERROR_MESSAGE;
/**
 *
 * @author Douglas-ASUS
 */

//A classe DAO: Data Acess Object
//para acesso e manipulação no banco de dados
//utilizando o driver jdbc do MySQL.
public class AcessDao {
    
    String url = "jdbc:mysql://localhost:3306/clientedb";
    String driver = "com.mysql.jdbc.Driver";
    String user = "root";
    String pass = "admin";
    Connection conexao;
    PreparedStatement instrucao;
    int a;

    public int getA() {
        return a;
    }
    
    //Método para se conectar ao banco de dados
    //Derby (porta 1527, localhost) 
    //user: root 
    //senha: admin.
    public int conectar(){
        try{
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, pass);
            return 0;
        } catch (ClassNotFoundException | SQLException ex) {
            //JOptionPane.showMessageDialog(null, "Erro ao se conectar como banco de dados!");
        }
        return 0;
    }
    
    public int desconectar(){
        try {
            conexao.close();
        } catch (SQLException x){
            return 1;
        }
        return 0;
    }
    
    public int cadastrar(Cliente save){
        try{
        instrucao = conexao.prepareStatement("insert into cliente(id,nome,telefone,sexo,renda)values(?,?,?,?,?)");
        instrucao.setInt(1, save.getId());
        instrucao.setString(2, save.getNome());
        instrucao.setInt(3, save.getTelefone());
        instrucao.setString(4, save.getSexo());
        instrucao.setDouble(5, save.getRenda());
        instrucao.executeUpdate();
        return 1;
        } catch (SQLException a) {
            return 0;
            }
        } 
    
    public int excluir(int delete){
        try{
            instrucao = conexao.prepareStatement("delete from cliente where id = ?");
            instrucao.setInt(1, delete);
            int ex = instrucao.executeUpdate();
            
            if (ex==0){
                //JOptionPane.showMessageDialog(null,  "Código ID não encontrado!");
                return 0;
            } else if (ex==1){
               // JOptionPane.showMessageDialog(null,  "Os dados foram excluídos com sucesso!");
                return 1;
            }
            
        } catch (SQLException x) {
            //JOptionPane.showMessageDialog(null, "Falha ao excluir! \n"+x.getMessage());
        }
        return 0;
    }
    
    public ArrayList consulta(){
        ArrayList<Cliente> listaDados = new ArrayList<>();
        try {
            instrucao = conexao.prepareStatement("select * from cliente");
            ResultSet result = instrucao.executeQuery();
            while(result.next()){
                Cliente dados = new Cliente();
                dados.setId(result.getInt("id"));
                dados.setNome(result.getString("nome"));
                dados.setTelefone(result.getInt("telefone"));
                dados.setSexo(result.getString("sexo"));
                dados.setRenda(result.getDouble("renda"));
                listaDados.add(dados);
            }
            return listaDados;
        }catch (SQLException x){
            //JOptionPane.showMessageDialog(null, "Ocorreu algum erro durante a pesquisa! \n"+x.getMessage());            
        }
        return null;
    }
    
    public Cliente pesquisar(Cliente search){
        try {
            instrucao = conexao.prepareStatement("select * from cliente where id = ?");
            instrucao.setInt(1, search.getId());
            ResultSet result = instrucao.executeQuery();
            if (result.next()){
                Cliente buscas = new Cliente();
                buscas.setId(result.getInt("id"));
                buscas.setNome(result.getString("nome"));
                buscas.setRenda(result.getShort("renda"));
                buscas.setSexo(result.getString("sexo"));
                buscas.setTelefone(result.getInt("telefone"));
                return buscas;
            }
        } catch (SQLException x) {
            return null;
        }
        return null;
    }
    
    public void alterar(Cliente dados){
        try{
            instrucao = conexao.prepareStatement("update cliente set nome=?, telefone=?, sexo=?, renda=? where id=?");
            instrucao.setString(1, dados.getNome());
            instrucao.setInt(2, dados.getTelefone());
            instrucao.setString(3, dados.getSexo());
            instrucao.setDouble(4, dados.getRenda());
            instrucao.setInt(5, dados.getId());
            instrucao.executeUpdate();
            //JOptionPane.showMessageDialog(null, "Dados Alterados com sucesso!");
        }catch (SQLException x){
            //JOptionPane.showMessageDialog(null, "Erro ao atualizar os dados \n"+x.getMessage());
        }
    }
    
}

