class Aluno
{
   protected:
      string _nome;
      int _mat;
      
   public:
      Aluno(){};
      void setNome(string nome){this._nome = nome;}
      string getNome(){return this._nome;}
      virtual void setMatricula(int mat);
      int getMatricula(){return this._mat;}
      
};

Aluno::setMatricula(int mat)
{
   this._mat = mat;
};

class Bolsista:public Aluno
{
   private: 
   double _bolsa;
   
   public:
      Bolsista(){this._nome=""; this._mat=0; this._bolsa=0.0;}
      void setBolsa(double bolsa){this._bolsa = bolsa;}
      double getBolsa(){return this._bolsa;}
};


void cria(Bolsista* &aluno)
{
   aluno.setNome("Ciniro");
   aluno.setMatricula(10);
   aluno.setBolsa(300.5);
};

void OnStart()
{
    
    Bolsista* a[];
    for (int i = 0;i<=9;i++)
    {
      ArrayResize(a,i+1);
      a[i] = new Bolsista();
      a[i].setNome("A"+i);
      a[i].setMatricula(i);
      a[i].setBolsa(i);
    }
    
    string valor = (string)a[7].getBolsa();
    Print("O valor é: " + valor);
    
    Bolsista* xx = new Bolsista();
    xx.setNome("Jorge");
    xx.setMatricula(5);
    xx.setBolsa(5.5);
    cria(xx);
    
   string objeto = xx.getNome() + "  " + xx.getMatricula() + " " + xx.getBolsa();
   
   Print(objeto);
   
   for (int i = 0;i<=9;i++)
    {
      delete a[i];
    }
    
   delete xx;
};