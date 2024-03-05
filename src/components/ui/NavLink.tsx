import Link from "next/link";
import React from "react";
import { usePathname } from "next/navigation";

interface NavLinkProps {
  href: string;
  exact?: boolean;
  children: React.ReactNode;
}

const NavLink: React.FC<NavLinkProps> = ({ href, exact, children }) => {
  const pathname = usePathname();
  const active = "text-primary";
  const isActive = exact ? pathname === href : pathname.startsWith(href);

  return (
    <Link href={href} className={isActive ? active : ""}>
      {children}
    </Link>
  );
};

export default NavLink;
