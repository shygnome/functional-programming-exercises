// Exercise 1 & 2 Pure Function

// function isIndexPage() {
//     return window.location.pathname === "/";
// }

function isIndexPage(pathname: string) {
    return pathname === "/";
}

// Tidak bisa dicoba karena harus dari browser.
// isIndexPage kedua lebih baik karena merupakan pure function (menerima arg dan mengembalikan val).
// isIndexPage pertama mengacu pada global var, perlu di-mock saat dilakukan test.

