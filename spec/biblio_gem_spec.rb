#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem do
    
    it 'has a version number' do
        expect(BiblioGem::VERSION).not_to be nil
    end

   describe "Almacenamiento de datos (1 autor):" do
      before :each do
        @bib1 = BiblioGem::Bibliography.new(autor: "Autor1", titulo: "Titulo1", fecha: "Fecha1", isbn: "ISBN1")
      end

      it "El nombre del autor es correcto" do
         @bib1.autor.should eq("Autor1")
      end

      it "El título del libro es correcto" do
         @bib1.titulo.should eq("Titulo1")
      end

      it "La fecha del libro es correcta" do
         @bib1.fecha.should eq("Fecha1")
      end

      it "ISBN correcto" do
         @bib1.isbn.should eq("ISBN1")
      end
   end
   
   describe "Almacenamiento de datos (2 autores):" do
      before :each do
         @bib2 = BiblioGem::Bibliography.new(autor: ["Autor1", "Autor2"], titulo: "Titulo1", fecha: "Fecha1", isbn: "ISBN1")
      end
      
      it "El nombre de ambos autores son correctos" do
         @bib2.autor.should eq(["Autor1","Autor2"])
      end
      
      it "El título del libro es correcto" do
         @bib2.titulo.should eq("Titulo1")
      end

      it "La fecha del libro es correcta" do
         @bib2.fecha.should eq("Fecha1")
      end

      it "ISBN correcto" do
         @bib2.isbn.should eq("ISBN1")
      end
   end
   
   describe "Imprimiendo datos" do
      before :each do
         @bib1 = BiblioGem::Bibliography.new(autor: "Autor1", titulo: "Titulo1", fecha: "Fecha1", isbn: "ISBN1")
         @bib2 = BiblioGem::Bibliography.new(autor: ["Autor1","Autor2"], titulo: "Titulo2", fecha: "Fecha2", isbn: "ISBN2")
      end
       
      it "Imprimiendo datos 1" do
         @bib1.to_s.should eq("Autor/es: Autor1\n Titulo: Titulo1\n Fecha: Fecha1\n ISBN: ISBN1\n")
      end
      
      it "Imprimiendo datos 2" do
         @bib2.to_s.should eq("Autor/es: Autor1, Autor2\n Titulo: Titulo2\n Fecha: Fecha2\n ISBN: ISBN2\n")
      end
   end
end
