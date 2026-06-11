<?php
// File: TiketVelvet.php
require_once 'Tiket.php';

class TiketVelvet extends Tiket {
    private $bantalSelimutPack;
    private $layananButler;

    public function __construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket, $bantalSelimutPack, $layananButler) {
        parent::__construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket);
        $this->bantalSelimutPack = $bantalSelimutPack;
        $this->layananButler = $layananButler;
    }

    public function hitungTotalHarga() {
        return ($this->hargaDasarTiket + 75000) * $this->jumlahKursi;
    }

    public function tampilkanInfoFasilitas() {
        echo "=== FASILITAS TIKET VELVET ===<br>";
        echo "Pack Bantal/Selimut: " . $this->bantalSelimutPack . "<br>";
        echo "Layanan Butler     : " . $this->layananButler . "<br>";
    }
}