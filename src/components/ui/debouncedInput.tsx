import {
  InputHTMLAttributes,
  ReactElement,
  ReactNode,
  useEffect,
  useState,
} from "react";
import { Input } from "./input";
import { MagnifyingGlassIcon } from "@radix-ui/react-icons";
import clsx from "clsx";

function DebouncedInput({
  value: initialValue,
  onChange,
  debounce = 500,
  icon: IconComponent,
  ...props
}: {
  value: string | number;
  onChange: (value: string | number) => void;
  debounce?: number;
  icon?: React.ElementType;
} & Omit<InputHTMLAttributes<HTMLInputElement>, "onChange">) {
  const [value, setValue] = useState(initialValue);

  useEffect(() => {
    setValue(initialValue);
  }, [initialValue]);

  useEffect(() => {
    const timeout = setTimeout(() => {
      onChange(value);
    }, debounce);

    return () => clearTimeout(timeout);
  }, [value]);

  return (
    <div className="relative">
      {IconComponent && (
        <IconComponent className="absolute inset-y-0 left-2 h-full w-5 text-[#96749A]" />
      )}
      <Input
        {...props}
        type="text"
        value={value}
        onChange={(e) => setValue(e.target.value)}
        className={clsx(
          "transition rounded-none duration-300 hover:ring-1 focus-visible:ring-1 rounded-md",
          {
            "pl-8": IconComponent,
            "pl-2": !IconComponent,
          }
        )}
      />
    </div>
  );
}

export default DebouncedInput;
