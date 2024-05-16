export function formatNumber(number) {
  const suffixes = ["", "K", "M"]; // Suffixes for thousand and million
  const num = parseFloat(number); // Ensure number is parsed as float
  let formattedNumber = num.toLocaleString(); // Format number with commas

  // Determine the appropriate suffix and divide number accordingly
  const suffixIndex = Math.floor(("" + num).length / 3);
  let formattedSuffix = suffixes[suffixIndex];

  // If the suffix is not empty, divide the number
  if (formattedSuffix) {
    formattedNumber = (num / Math.pow(1000, suffixIndex)).toFixed(1);
  }

  return formattedNumber + formattedSuffix;
}
