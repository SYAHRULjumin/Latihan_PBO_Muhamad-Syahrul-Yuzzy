<?php
// File: TiketIMAX.php
require_once 'Tiket.php';

class TiketIMAX extends Tiket {
    private $kacamata3dId;
    private $efekGerakFitur;

    public function __construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket, $kacamata3dId, $efekGerakFitur) {
        parent::__construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket);
        $this->kacamata3dId = $kacamata3dId;
        $this->efekGerakFitur = $efekGerakFitur;
    }

    public function hitungTotalHarga() {
        return ($this->hargaDasarTiket + 25000) * $this->jumlahKursi;
    }

    public function tampilkanInfoFasilitas() {
        echo "=== FASILITAS TIKET IMAX ===<br>";
        echo "ID Kacamata 3D  : " . $this->kacamata3dId . "<br>";
        echo "Fitur Efek Gerak: " . $this->efekGerakFitur . "<br>";
    }
}