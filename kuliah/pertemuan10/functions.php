<?php

function koneksi()
{
  // membuat koneksi ke database
  return mysqli_connect("localhost", "root", "", "pw_41155050190038");
}

function query($query) 
{
  $conn = koneksi();

  $result = mysqli_query($conn, $query);

  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
  $rows[] = $row;
};
  return $rows;
  
}