<?php
//Clase de los puntos
class puntos
{

   private int $id;
   private int $id_peliculas;
   private int $id_usuario;
   private int $puntos;

    /**
     * @param int $id
     * @param int $id_peliculas
     * @param int $id_usuario
     * @param int $puntos
     */
    public function __construct(int $id, int $id_peliculas, int $id_usuario, int $puntos)
    {
        $this->id = $id;
        $this->id_peliculas = $id_peliculas;
        $this->id_usuario = $id_usuario;
        $this->puntos = $puntos;
    }

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * @return int
     */
    public function getIdPeliculas(): int
    {
        return $this->id_peliculas;
    }

    /**
     * @param int $id_peliculas
     */
    public function setIdPeliculas(int $id_peliculas): void
    {
        $this->id_peliculas = $id_peliculas;
    }

    /**
     * @return int
     */
    public function getIdUsuario(): int
    {
        return $this->id_usuario;
    }

    /**
     * @param int $id_usuario
     */
    public function setIdUsuario(int $id_usuario): void
    {
        $this->id_usuario = $id_usuario;
    }

    /**
     * @return int
     */
    public function getPuntos(): int
    {
        return $this->puntos;
    }

    /**
     * @param int $puntos
     */
    public function setPuntos(int $puntos): void
    {
        $this->puntos = $puntos;
    }


}