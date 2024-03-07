"use client";

import { Column, ColumnDef, FilterFn } from "@tanstack/react-table";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { DotsHorizontalIcon, CaretSortIcon } from "@radix-ui/react-icons";
import clsx from "clsx";
import { rankItem } from "@tanstack/match-sorter-utils";

export type Package = {
  shipment_id: number;
  first_name: string;
  last_name: string;
  barcode: string;
  tracking_number: string;
  week: number;
  shipment_type: "air" | "water";
  weight: number;
  location: "string";
  parts: number;
  status: "accepted" | "pending" | "completed" | "ready";
};

const SortingHeader: React.FC<{
  column: Column<Package, unknown>;
  label: string;
  className?: string;
}> = ({ column, label, className }) => {
  return (
    <Button
      className={
        "pl-0 hover:bg-transparent text-primary-text uppercase text-xs" +
        " " +
        className
      }
      variant="ghost"
      onClick={() => column.toggleSorting(column.getIsSorted() === "asc")}
    >
      {label}
      <CaretSortIcon className="ml-2 h-4 w-4" />
    </Button>
  );
};

export const fuzzyFilter: FilterFn<any> = (row, columnId, value, addMeta) => {
  const itemRank = rankItem(row.getValue(columnId), value);
  addMeta({
    itemRank,
  });

  return itemRank.passed;
};

export const customerColumns: ColumnDef<Package>[] = [
  {
    accessorKey: "shipment_id",
    header: () => {
      return (
        <div className="hover:bg-transparent text-primary-text uppercase text-xs">
          ID
        </div>
      );
    },
  },
  {
    accessorKey: "first_name",
    header: ({ column }) => {
      return (
        <SortingHeader
          label="First Name"
          column={column}
          className="min-w-[112px]"
        />
      );
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "last_name",
    header: ({ column }) => {
      return (
        <SortingHeader
          label="Last Name"
          column={column}
          className="min-w-[112px]"
        />
      );
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "barcode",
    header: ({ column }) => {
      return <SortingHeader label="Barcode" column={column} />;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "tracking_number",
    header: ({ column }) => {
      return <SortingHeader label="Tracking" column={column} />;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "weight",
    header: ({ column }) => {
      return <SortingHeader label="Weight" column={column} />;
    },
    cell: ({ row }) => {
      return <div className="pl-[18%]">{row.getValue("weight")}</div>;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "week",
    header: ({ column }) => {
      return <SortingHeader label="Week" column={column} />;
    },
    cell: ({ row }) => {
      return <div className="pl-[18%]">{row.getValue("week")}</div>;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "status",
    header: ({ column }) => {
      return <SortingHeader label="Status" column={column} />;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "shipment_type",
    header: ({ column }) => {
      return <SortingHeader label="Type" column={column} />;
    },
    cell: ({ row }) => {
      const value = row.getValue("shipment_type");
      return (
        <div
          className={clsx("p-1 text-center rounded-md", {
            "bg-[#D3E8FF]": value === "air",
          })}
        >
          {row.getValue("shipment_type")}
        </div>
      );
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "location",
    header: ({ column }) => {
      return <SortingHeader label="Location" column={column} />;
    },
    filterFn: fuzzyFilter,
  },
  {
    accessorKey: "parts",
    header: ({ column }) => {
      return <SortingHeader label="Parts" column={column} />;
    },
    cell: ({ row }) => {
      return <div className="pl-[18%]">{row.getValue("parts")}</div>;
    },
    filterFn: fuzzyFilter,
  },
  {
    id: "actions",
    header: () => {
      return (
        <div className="hover:bg-transparent text-primary-text uppercase text-xs">
          Actions
        </div>
      );
    },
    cell: ({ row }) => {
      const currentPackage = row.original;

      return (
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button
              variant="ghost"
              className="h-8 w-8 p-0 hover:bg-transparent focus-visible:ring-0"
            >
              <span className="sr-only">Open menu</span>
              <DotsHorizontalIcon className="h-4 w-4" />
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end">
            <DropdownMenuItem
              onClick={() =>
                navigator.clipboard.writeText(
                  currentPackage.shipment_id.toString()
                )
              }
            >
              Copy shipment ID
            </DropdownMenuItem>
            <DropdownMenuSeparator />
            <DropdownMenuItem>View package</DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      );
    },
  },
];
