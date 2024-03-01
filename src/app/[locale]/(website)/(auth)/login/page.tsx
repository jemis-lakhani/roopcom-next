import Image from "next/image";
import Link from "next/link";
import { UserAuthForm } from "./components/user-auth-form";

export default function LoginPage() {
  return (
    <>
      <div className="md:hidden">
        <Image
          src="/examples/authentication-light.png"
          width={1280}
          height={843}
          alt="Authentication"
          className="block dark:hidden"
        />
        <Image
          src="/examples/authentication-dark.png"
          width={1280}
          height={843}
          alt="Authentication"
          className="hidden dark:block"
        />
      </div>
      <div
        style={{ minHeight: "calc(100vh - 78.28px)" }}
        className="container relative hidden flex-col items-center justify-center md:grid lg:max-w-none lg:grid-cols-2 lg:px-0"
      >
        <div className="lg:p-8">
          <div className="mx-auto flex w-full flex-col justify-center space-y-6 sm:w-[350px]">
            <div className="flex flex-col space-y-2 text-center">
              <h1 className="text-2xl text-primary font-bold tracking-tight">
                Login
              </h1>
            </div>
            <UserAuthForm />
            <p className="px-8 text-center text-sm text-muted-foreground">
              By clicking continue, you agree to our{" "}
              <Link
                href="/terms"
                className="underline underline-offset-4 hover:text-primary"
              >
                Terms of Service
              </Link>{" "}
              and{" "}
              <Link
                href="/privacy"
                className="underline underline-offset-4 hover:text-primary"
              >
                Privacy Policy
              </Link>
              .
            </p>
          </div>
        </div>

        <div className="relative hidden h-full flex-col bg-muted  p-10 text-white dark:border-r lg:flex">
          {/* <div className="absolute inset-0 bg-zinc-900" /> */}
          <div className="absolute inset-0 bg-gradient-to-r from-[#24358E] to-[#E44C53]" />
          <div className="relative z-20 flex items-center text-xl font-medium">
            RoopCom Services & More
          </div>
          <div className="relative z-20 mt-auto">
            <blockquote className="space-y-2 font-light">
              <p className="text-lg">
                &ldquo;This shipping company has delivered my packages with such
                speed and precision that I thought they were using teleportation
                technology!&rdquo;
              </p>
              <footer className="text-sm">- Mr. Pack Age</footer>
            </blockquote>
          </div>
        </div>
      </div>
    </>
  );
}
