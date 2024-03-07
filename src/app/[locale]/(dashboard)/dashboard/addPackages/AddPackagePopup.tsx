"use client";

import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/atoms/new-york/ui/dialog";
import { Button } from "@/components/atoms/new-york/ui/button";
import React, { ReactNode } from "react";
import {
  Form,
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/atoms/new-york/ui/form";
import { Input } from "@/components/atoms/new-york/ui/input";
import { useForm, Controller } from "react-hook-form";
import dynamic from "next/dynamic";

type Props = {};

const AddPackagePopup = ({}: Props) => {
  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm();
  const onSubmit = (data: any) => {
    // Handle form submission logic here
    console.log(data);
  };

  return (
    <Dialog>
      <DialogTrigger>
        <Button variant="default">Add Package</Button>
      </DialogTrigger>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>Add a new package</DialogTitle>
          <DialogDescription></DialogDescription>
        </DialogHeader>

        <form onSubmit={handleSubmit(onSubmit)} className="">
          <div>
            <label htmlFor="firstName">First Name:</label>
            <Controller
              name="firstName"
              control={control}
              render={({ field }) => <Input {...field} type="text" />}
            />
            {errors.firstName && <p>{errors.firstName.message}</p>}
          </div>

          <div>
            <label htmlFor="lastName">Last Name:</label>
            <Controller
              name="lastName"
              control={control}
              render={({ field }) => <Input {...field} type="text" />}
            />
            {errors.lastName && <p>{errors.lastName.message}</p>}
          </div>

          <div>
            <label htmlFor="age">Age:</label>
            <Controller
              name="age"
              control={control}
              render={({ field }) => <Input {...field} type="number" />}
            />
            {errors.age && <p>{errors.age.message}</p>}
          </div>

          <div>
            <label htmlFor="barcode">Barcode:</label>
            <Controller
              name="barcode"
              control={control}
              render={({ field }) => <Input {...field} type="text" />}
            />
            {errors.barcode && <p>{errors.barcode.message}</p>}
          </div>

          <button type="submit">Submit</button>
        </form>
      </DialogContent>
    </Dialog>
  );
};

export default dynamic(() => Promise.resolve(AddPackagePopup), { ssr: false });
