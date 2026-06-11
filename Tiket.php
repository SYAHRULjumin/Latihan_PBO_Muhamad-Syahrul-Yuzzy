<?php
// File: Tiket.php

abstract class Tiket {
    // Properti Terenkapsulasi (protected) sesuai dengan kolom database
    protected $idTiket;
    protected $namaFilm;
    protected $jadwalTayang;
    protected $jumlahKursi;
    protected $hargaDasarTiket;

    // Constructor untuk memetakan data dari database
    public function __construct($idTiket, $namaFilm, $jadwalTayang, $jumlahKursi, $hargaDasarTiket) {
        $this->idTiket = $idTiket;
        $this->namaFilm = $namaFilm;
        $this->jadwalTayang = $jadwalTayang;
        $this->jumlahKursi = $jumlahKursi;
        $this->hargaDasarTiket = $hargaDasarTiket;
    }

    // Metode Abstrak (Wajib kosong / tanpa body)
    abstract public function hitungTotalHarga();
    abstract public function tampilkanInfoFasilitas();
}