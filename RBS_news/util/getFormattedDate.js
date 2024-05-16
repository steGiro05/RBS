export function formatDate(date) {
  // Array dei nomi dei giorni della settimana
  const daysOfWeek = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  // Array dei nomi dei mesi
  const months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  // Ottenere il giorno della settimana, il nome del mese e l'anno
  const dayOfWeek = daysOfWeek[date.getDay()];
  const monthName = months[date.getMonth()];
  const year = date.getFullYear();

  // Ottenere il numero del giorno del mese
  const dayOfMonth = date.getDate();

  // Costruire la stringa con il formato desiderato
  const formattedDate = `${dayOfWeek},  ${monthName} ${dayOfMonth}, ${year}`;

  return formattedDate;
}

export function formatDateAndRelative(dateString) {
  const date = new Date(dateString);
  const currentDate = new Date();

  // Rimuovere l'ora dalle date
  const formattedDate = new Date(date.toDateString());
  const formattedCurrentDate = new Date(currentDate.toDateString());

  // Calcolare la differenza in giorni tra le due date
  const diffTime = Math.abs(formattedCurrentDate - formattedDate);
  const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

  if (diffDays === 0) {
    return "Today";
  } else if (diffDays === 1) {
    return "Yesterday";
  } else if (diffDays === 2) {
    return "Two days ago";
  } else if (diffDays === 3) {
    return "Three days ago";
  } else {
    // Formattare la data nel formato "gg-mm-yy"
    const day = String(date.getDate()).padStart(2, "0");
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const year = String(date.getFullYear()).slice(-2);
    return `${day}-${month}-${year}`;
  }
}
