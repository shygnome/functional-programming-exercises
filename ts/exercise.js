// Pure Function
function isIndexPage1() {
    return window.location.pathname === "/";
}
function isIndexPage2(pathname) {
    return pathname === "/";
}
console.log(isIndexPage1());
console.log(isIndexPage2(window.location.pathname));
console.log(isIndexPage2("/random-path"));
