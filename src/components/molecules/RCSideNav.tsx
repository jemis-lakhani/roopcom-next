import React from "react";
import Link from "next/link";
import {
  Accordion,
  AccordionItem,
  AccordionTrigger,
  AccordionContent,
} from "../atoms/new-york/ui/accordion";
import { Icons } from "@/components/atoms/icons";

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

const SideNav: React.FC = () => {
  return (
    <div
      className="fixed w-64 bg-white overflow-y-auto z-[100]"
      style={{ height: "calc(100vh - 64px)" }}
    >
      <Accordion type="multiple">
        {sideMenu.map((menuItem, index) => (
          <>
            <AccordionItem value={menuItem.title} key={menuItem.title + index}>
              <AccordionTrigger className="pl-1 pr-3 pt-2 pb-2 hover:bg-accent">
                <div className="flex gap-3 pl-2 p-1 ">
                  {menuItem.icon}
                  <span>{menuItem.title}</span>
                </div>
              </AccordionTrigger>
              <AccordionContent>
                {menuItem.children.map((child, index) => (
                  <>
                    <div className="block pl-10 p-2.5 bg-destructive-foreground">
                      <Link
                        key={child.title + index}
                        href={child.href}
                        className="hover:text-primary"
                      >
                        {child.title}
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
  );
};

export default SideNav;
