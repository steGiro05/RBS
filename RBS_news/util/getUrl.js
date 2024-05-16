export function getLastValuesFromUrl(url, n) {
  const parts = url.split("/");
  return parts.slice(-n).join("/"); // Restituisce gli ultimi n valori dalla matrice parts come una singola stringa
}
