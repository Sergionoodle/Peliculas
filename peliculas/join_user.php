<?php
//Clase para el join que haremos con el usuario para sacar el nombre y el comentario
class join_user
{
    private int $idComentario;
    private int $idUsuarios;
    private string $nombreUsuario;
    private string $comentario;

    /**
     * @param int $idComentario
     * @param int $idUsuarios
     * @param string $nombreUsuario
     * @param string $comentario
     */
    public function __construct(int $idComentario, int $idUsuarios, string $nombreUsuario, string $comentario)
    {
        $this->idComentario = $idComentario;
        $this->idUsuarios = $idUsuarios;
        $this->nombreUsuario = $nombreUsuario;
        $this->comentario = $comentario;
    }

    /**
     * @return int
     */
    public function getIdComentario(): int
    {
        return $this->idComentario;
    }

    /**
     * @return int
     */
    public function getIdUsuarios(): int
    {
        return $this->idUsuarios;
    }

    /**
     * @return string
     */
    public function getNombreUsuario(): string
    {
        return $this->nombreUsuario;
    }

    /**
     * @return string
     */
    public function getComentario(): string
    {
        return $this->comentario;
    }



}