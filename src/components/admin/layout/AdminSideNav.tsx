import React from "react";
import Link from "next/link";
import {
  Accordion,
  AccordionItem,
  AccordionTrigger,
  AccordionContent,
} from "../../atoms/new-york/ui/accordion";
import { Icons } from "@/components/atoms/icons";
import clsx from "clsx";
import Logo from "@/components/atoms/Logo";

const sideMenu = [
  {
    title: "Packages",
    icon: <Icons.cubes className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Orders",
    icon: <Icons.gift className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Clients",
    icon: <Icons.users className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Unknown Packages",
    icon: <Icons.unknown className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Admin Services",
    icon: <Icons.service className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Gift Cards",
    icon: <Icons.giftCard className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Invoice",
    icon: <Icons.invoice className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Quotations",
    icon: <Icons.estimate className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Site Services",
    icon: <Icons.siteService className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
  {
    title: "Warehouse Receipts",
    icon: <Icons.receipt className="h-5 w-5" />,
    children: [
      { title: "Add Packages", href: "/dashboard" },
      { title: "Ship Packages", href: "/dashboard/subpage1" },
      { title: "View Packages", href: "/dashboard/subpage1" },
      { title: "All History", href: "/dashboard/subpage1" },
    ],
  },
];

type Props = {
  isSideNavVisible: boolean;
};

const SideNav = ({ isSideNavVisible }: Props) => {
  return (
    <div
      className={clsx(
        "h-screen fixed transition-width duration-300 ease-in-out",
        {
          "w-64 flex flex-col": isSideNavVisible,
          "w-0": !isSideNavVisible,
        },
      )}
    >
      <div className="flex items-center justify-center text-lg font-semibold bg-primary select-none w-full h-14 z-[1000]">
        <div
          className={clsx("transition-opacity duration-700 ease-in-out", {
            "opacity-0": !isSideNavVisible,
            "opacity-100": isSideNavVisible,
          })}
        >
          Admin
        </div>
      </div>
      <div
        className="w-full h-full overflow-y-auto z-[1000] py-3"
        style={{ backgroundColor: "rgb(55, 111, 208)" }}
      >
        <Accordion type="multiple">
          {sideMenu.map((menuItem, index) => (
            <>
              <AccordionItem
                value={menuItem.title}
                key={menuItem.title + index}
                className={clsx(
                  "border-0 transition-opacity duration-700 ease-in-out select-none",
                  {
                    "opacity-0": !isSideNavVisible,
                    "opacity-100": isSideNavVisible,
                  },
                )}
              >
                <AccordionTrigger className="flex text-white select-none py-3 px-7 hover:bg-black hover:bg-opacity-[0.08]">
                  <span className="opacity-60">{menuItem.icon}</span>
                  <span className="flex-1 flex-shrink text-left text-[13px] px-4">
                    {menuItem.title}
                  </span>
                </AccordionTrigger>
                <AccordionContent>
                  {menuItem.children.map((child, index) => (
                    <>
                      <div className="block text-white select-none text-[13px] opacity-75 pl-14 py-2 hover:bg-black hover:bg-opacity-[0.08]">
                        <Link key={child.title + index} href={child.href}>
                          <span className="px-2">{child.title}</span>
                        </Link>
                      </div>
                    </>
                  ))}
                </AccordionContent>
              </AccordionItem>
            </>
          ))}
        </Accordion>
      </div>
    </div>
  );
};

export default SideNav;
