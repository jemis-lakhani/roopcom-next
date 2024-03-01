import Link from "next/link";
import React from "react";
import { clsx } from "clsx";

type ButtonProps = {
  onClick?: (e?: any) => {};
  style?: "default" | "filled";
  width?: "hug" | "fill";
  href: string;
  children?: React.ReactElement | string;
};

const StyledLink = ({
  href,
  style = "default",
  width = "hug",
  onClick,
  children,
}: ButtonProps) => {
  const finalStyle = clsx(
    "font-inter duration-300 lg:px-3 lg:py-2 rounded-lg",
    { "hover:bg-gray-600 bg-black text-white px-3 py-2": style === "filled" },
    { "hover:bg-gray-50 text-black": style === "default" },
    { "w-full text-center": width === "fill" },
    { "text-left": width === "hug" }
  );
  return (
    <Link
      href={href}
      // className=" font-inter text-center bg-black text-white rounded-lg hover:bg-gray-800"
      // className="lg:hover:bg-gray-50 font-inter rounded-lg lg:px-6 lg:py-4 lg:hover:text-gray-800 duraion-300"
      className={finalStyle}
      onClick={onClick}
    >
      {children}
    </Link>
  );
};

export default StyledLink;
