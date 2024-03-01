import Image from "next/image";
import Link from "next/link";

export default function Logo({
  link = "/",
  style = "left-5 relative lg:inset-0 p-5",
}: {
  link?: string;
  style?: string;
}): React.ReactElement {
  return (
    <Link href={link ?? "/"}>
      <Image
        className={style}
        src={"https://roopcom.com/dist/img/resize.png"}
        alt="Roopcom Logo"
        width={75}
        height={24}
      />
    </Link>
  );
}
