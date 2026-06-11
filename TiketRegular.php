<?php
// File: TiketRegular.php
require_once 'Tiket.php';

class TiketRegular extends Tiket {
    private $tipeAudio;
    private $lokasiBaris;

    public function __construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket, $tipeAudio, $lokasiBaris) {
        parent::__construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket);
        $this->tipeAudio = $tipeAudio;
        $this->lokasiBaris = $lokasiBaris;
    }

    public function hitungTotalHarga() {
        return $this->hargaDasarTiket * $this->jumlahKursi;
    }

    public function tampilkanInfoFasilitas() {
        echo "=== FASILITAS TIKET REGULAR ===<br>";
        echo "Tipe Audio   : " . $this->tipeAudio . "<br>";
        echo "Lokasi Baris : " . $this->lokasiBaris . "<br>";
    }
}