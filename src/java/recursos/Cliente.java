package recursos;
//Classe da qual o objeto conterá os dados para serem
//inseridos no banco de dados.
public class Cliente {
   //As variaveis String que armazenam os dados. 
   private int id;
   private String nome;
   private int telefone;
   private String sexo;
   private double renda;   
   
   //Construtor vazio utilizado para instanciar
   //objetos cliente dentro de metodos da classe dao
   public Cliente(){
   }
   //O construtor armazenara os dados no objeto quando instanciado.
    public Cliente(int id, String nome, int telefone, String sexo, double renda) {
        this.id = id;
        this.nome = nome;
        this.telefone = telefone;
        this.sexo = sexo;
        this.renda = renda;
    }
   
    //getters e setters...
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public double getRenda() {
        return renda;
    }

    public void setRenda(double renda) {
        this.renda = renda;
    }
   
   
    
}
