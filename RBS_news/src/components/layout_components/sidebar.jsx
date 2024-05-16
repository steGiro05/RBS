import SponsorCard from "../post_components/sponsor_card";
import { headers } from "next/headers";

const url = "http://localhost:3000/api/sponsors";

const getSponsors = async () => {
  const response = await fetch(url, { method: "GET", headers: headers() });
  return response.json();
};

const sidebar = async () => {
  const sponsors = await getSponsors();

  return (
    <>
      <ul>
        {sponsors?.map((item) => (
          <SponsorCard key={item.id} sponsor={item} />
        ))}
      </ul>
    </>
  );
};

export default sidebar;
