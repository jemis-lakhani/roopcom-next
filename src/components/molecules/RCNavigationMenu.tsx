"use client";
import React, { useState } from "react";
import Logo from "@/components/atoms/Logo";
import {
  NavigationMenu,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
} from "@/components/ui/navigation-menu";
import NavLink from "../ui/NavLink";
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
  console.log({ user });

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
    <header className="flex w-full shadow-md bg-primary-foreground">
      <NavigationMenu>
        <NavigationMenuList>
          <NavigationMenuItem>
            <Logo />
          </NavigationMenuItem>
          {menuData.map((menuItem) => (
            <NavigationMenuItem key={menuItem.link}>
              <NavigationMenuItem>
                <NavLink href={menuItem.link}>
                  <NavigationMenuLink className={navigationMenuTriggerStyle()}>
                    {menuItem.title}
                  </NavigationMenuLink>
                </NavLink>
              </NavigationMenuItem>
            </NavigationMenuItem>
          ))}
        </NavigationMenuList>

        <NavigationMenuList>
          {authButtons.map((menuItem) => (
            <NavigationMenuItem key={menuItem.link}>
              <NavigationMenuItem>
                <NavLink href={menuItem.link}>
                  <NavigationMenuLink className={navigationMenuTriggerStyle()}>
                    {menuItem.title}
                  </NavigationMenuLink>
                </NavLink>
              </NavigationMenuItem>
            </NavigationMenuItem>
          ))}
        </NavigationMenuList>
      </NavigationMenu>
    </header>
  );
};

export default RCNavigationMenu;
