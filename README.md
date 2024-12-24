# TUGAS PRAKTIKUM CONNECT API

## NAMA: MOCH. DZAKY MUSUADDAD
## NIM: 362358302011
## KELAS: 2A TRPL


### A. TAMPILAN
1. Tampilan List
   
   <img width="268" alt="image" src="https://github.com/user-attachments/assets/945ce885-5e9a-427f-9319-f098c82ec8f9" />

2. Pencarian
   
   <img width="268" alt="image" src="https://github.com/user-attachments/assets/1deceabb-8a49-4a17-a38f-ee06d336d397" />

3. Halaman Detail
   
   <img width="266" alt="image" src="https://github.com/user-attachments/assets/cee990b6-6b5b-446f-8189-97dfe371a912" />

### B. CODE
1. Class Crypto
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/e47ef234-10d0-4286-a57b-23ac68d02767" />
   - Keterangan: Pada folder model terdapat file item.dart yang digunakan untuk menyimpan data dari api yang akan diambil/digunakan. Class crypto adlah kelas yang digunakan untuk merepresentasikan data pada api yang akan digunakan. Pada class ini juga terdapat beberapa properti yang digunakan sebagai variable penyimpan dari masing-masing properti/item, disitu juga terdapat fungsi final yang menunjukkan bahwa properti tersebut tidak dapat diubah setelah diinisiasikan, selain itu juga terdapat konstruktor yang digunakan untuk membuat objek crypto yang wajib diisi (required). Konstruktor ini tentunya digunakan untuk menginisiasikan nilai dari masing-masing properti yang ada. Adapun fungsi fromJson yang digunakan untuk mengubah data crypto yang berupa json menjadi string, dynamic sesuai dengan kebutuhan kita.

2. Class DetailHalaman
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/a80ee226-95ac-4d33-b0b6-f8061ee3f581" />
   - Keterangan: Pada folder screen terdapat file detail_halaman.dart yang digunakan untuk menampilkan halaman detail dari cryptocurrency. Class DetailHalaman adalah widget yang digunakan untuk menampilkan detail tentang cryptocurrecy dalam sebuah halaman yang dibungkus dalam sebuah card. Data tersebut di dapat dari properti coin, diantaranya nama, foto, harga terbaru, peringkat, dan yang lainnya. 

3. Class DaftarList
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/99c13fd5-02f0-45ce-bd16-f455962ed17f" />
   - Keterangan: Class DaftarList komponen yang digunakan untuk menampilkan daftar crypto. Menggunakan StatefulWidget dikarenakan data dan tampilan dapat berubah, seperti saat akan melakukan pengurutan dan pencarian. Terdapat juga beberapa variable state yakni _datacrypto yang digunakan untuk menyimpan data crypto yang diambil dari API, _pencarian digunakan untuk melakukan pencarian beradasarkan nama, dan _sortingdata digunakan untuk menentukan atau merubah urutan harga terendah dan tertinggi. InitState juga diperlukan untuk memanggil fecthCryptoData yang dapat memuat data crypto dari API. Adapun fungsi future yang digunakan untuk mendapatkan data crypto dengan memanggil ApiService.fecthCryptoData. Lalu ada scaffold yang digunakan sebagai struktur UI yang nantinya akan menampilkan halaman dari class DaftarList.

4. Class ApiService
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/9d121605-d5c0-48f5-aa8d-1610d94bfff5" />
   - Keterangan: Class ApiService merupakan kelas yang berfungsi untuk mengambil data dari API. Mengguankan Uri.parse untuk mengonversi string URL menjadi objek Uri. http.get(url) digunakan untuk mengirimkan permintaan GET ke URL unnntuk mengambil data. diikuti dengan await untuk menunggu operasi dari asynchronous. Lalu membuat sebuah method response.statusCode untuk mengecek apakah permintaan berhasil atau tidak. Dalam method tersebut juga terdapat json.decode(response.body) yang berfungsi untuk mengonversi string JSON menjadi objek Dart.

5. Class WidgetCrypto
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/61c23487-3481-47ec-be45-43f24ed36834" />
   - Keterangan: 

6. File main.dart
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/d29eb175-0132-4e97-87c8-f972d467c73c" />
   - Keterangan: 










