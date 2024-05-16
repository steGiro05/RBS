import Image from "next/image";
import Link from "next/link";

const SponsorCard = ({ sponsor }) => {
  return (
    <Link href={sponsor.sponsorUrl}>
      <div className="bg-white shadow-md rounded-lg p-4 mb-4">
        <p className="text-lg font-semibold mb-2">{sponsor.name}</p>
        <p className="text-sm text-gray-600 mb-2">{sponsor.slogan}</p>
        <div className="w-32 h-32 mx-auto">
          <Image
            src={`/sponsorImg/${sponsor.imgUrl}`}
            alt="sponsor Image"
            width={128}
            height={128}
            className="object-cover rounded-full"
          />
        </div>
      </div>
    </Link>
  );
};

export default SponsorCard;
