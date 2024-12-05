<?php

// classe Model que representa a tabela filme no db
class Filme {
    private $table = "filme";

    private $conn;

    // colunas da tabela
    public $id;
    public $titulo;
    public $ano;
    public $descricao;
    public $link_img;

    // parâmetro de connexão opcional
    public function __construct($conn = null) {
        $this->conn = $conn;
    }

    // método responsável por buscar todos os filmes
    public function findAll() {
        $query = "SELECT * FROM $this->table";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__);

        return $stmt->fetchAll();
    }

    // método responsável por buscar 1 o filme
    public function findById($id) {
        $query = "SELECT * FROM $this->table
            WHERE id = :id";
        
        $stmt = $this->conn->prepare($query);
        // Configurando o PDO para comparar inteiros
        $stmt->bindParam(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // configura o PDO para retornar uma instância da classe
        // como resultado da consulta.
        $stmt->setFetchMode(PDO::FETCH_CLASS, __CLASS__);

        return $stmt->fetch();
    }

    // método para excluir filme por id
    public function delete($id) {
        $query = "DELETE FROM $this->table 
            WHERE id = :id";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":id", $id, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->rowCount() > 0;
    }

    // método para inserir um filme
    public function insert($titulo, $ano, $descricao,$link_img) {
        $query = "INSERT INTO $this->table (titulo, ano, descricao,link_img)
            values (:titulo, :ano, :descricao, :link_img)";

        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":titulo", $titulo);
        $stmt->bindParam(":ano", $ano);
        $stmt->bindParam(":descricao", $descricao);
        $stmt->bindParam(":link_img", $link_img);
        $stmt->execute();

        return $stmt->rowCount() > 0;
    }
/////////////////////////////////////////////////////////////
     // Método para atualizar um filme no banco de dados
    public function update($id, $titulo, $ano, $descricao,$link_img) {
    $sql = "UPDATE $this->table SET titulo = :titulo, ano = :ano, descricao = :descricao, link_img = :link_img WHERE id = :id";
    $stmt = $this->conn->prepare($sql);

    // Vincula os parâmetros com o tipo correto
    $stmt->bindParam(":titulo", $titulo, PDO::PARAM_STR);
    $stmt->bindParam(":ano", $ano, PDO::PARAM_INT);
    $stmt->bindParam(":descricao", $descricao, PDO::PARAM_STR);
    $stmt->bindParam(":link_img", $link_img, PDO::PARAM_STR);
    $stmt->bindParam(":id", $id, PDO::PARAM_INT);

    // Executa a consulta
    return $stmt->execute();
}
////////////////////////////////////////////////////////////

///metodo para voltar a tela inicial

}