"use client";
import React, { useState } from "react";
import StyledLink from "@/components/atoms/StyledLink";
import Logo from "@/components/atoms/Logo";
import clsx from "clsx";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuIndicator,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
  NavigationMenuViewport,
} from "@/components/ui/navigation-menu";
import Link from "next/link";
import { navigationMenuTriggerStyle } from "@/components/ui/navigation-menu";
import { User } from "@supabase/auth-helpers-nextjs";

type navigationMenuProps = {
  menuData: Array<{
    title: string;
    link: string;
  }>;
  user: User | null;
};

const RCNavigationMenu = ({ menuData, user }: navigationMenuProps) => {
  const [isOpen, setOpen] = useState<boolean>(false);

  const authButtons =
    user?.email?.length ?? 0 > 1
      ? [
          { title: "Dashboard", link: "/dashboard" },
          { title: "Logout", link: "/logout" },
        ]
      : [
          {
            title: "Login",
            link: "/login",
          },
          {
            title: "Signup",
            link: "/signup",
          },
        ];

  return (
    <header className="flex w-full">
      <NavigationMenu>
        <NavigationMenuList>
          <NavigationMenuItem>
            <NavigationMenuItem>
              <Logo />
            </NavigationMenuItem>
          </NavigationMenuItem>
          {menuData.map((menuItem) => (
            <NavigationMenuItem key={menuItem.link}>
              <NavigationMenuItem>
                <Link href={menuItem.link} legacyBehavior passHref>
                  <NavigationMenuLink className={navigationMenuTriggerStyle()}>
                    {menuItem.title}
                  </NavigationMenuLink>
                </Link>
              </NavigationMenuItem>
            </NavigationMenuItem>
          ))}
        </NavigationMenuList>

        <NavigationMenuList>
          {authButtons.map((menuItem) => (
            <NavigationMenuItem key={menuItem.link}>
              <NavigationMenuItem>
                <Link href={menuItem.link} legacyBehavior passHref>
                  <NavigationMenuLink className={navigationMenuTriggerStyle()}>
                    {menuItem.title}
                  </NavigationMenuLink>
                </Link>
              </NavigationMenuItem>
            </NavigationMenuItem>
          ))}
        </NavigationMenuList>
      </NavigationMenu>
    </header>
  );
};

export default RCNavigationMenu;
