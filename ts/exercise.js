// Exercise 1 & 2 Pure Function
// function isIndexPage() {
//     return window.location.pathname === "/";
// }
function isIndexPage(pathname) {
    return pathname === "/";
}
// Tidak bisa dicoba karena harus dari browser.
// isIndexPage kedua lebih baik karena merupakan pure function (menerima arg dan mengembalikan val).
// isIndexPage kedua juga dapat digunakan untuk mengecek suatu pathname lain (bukan yang sedang dibuka).
// isIndexPage pertama mengacu pada global var, perlu di-mock saat dilakukan test.
// Exercise 3 
var myArray = [1, 2, 3];
for (var x = 0, length = myArray.length; x < length; x++) {
    console.log(myArray[x]);
}
// Bentuk for loop di atas mengandung "side effect" yaitu variabel x dan length.
// Bentuk di atas dapat diubah menjadi foreach
[1, 2, 3].forEach(function (item, index, array) {
    console.log(item);
});
// Bentuk forEach dapat menghilangkan variabel yang sebenarnya tidak dibutuhkan.
