import Image from "next/image";
import Link from "next/link";
import { UserAuthForm } from "./components/user-auth-form";

export default function LoginPage() {
  return (
    <>
      {/* <div className="md:hidden">
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
      </div> */}
      <div
        style={{ minHeight: "calc(100vh - 78.28px)" }}
        className="container relative  flex-col items-center justify-center grid lg:max-w-none lg:grid-cols-2 lg:px-0"
      >
        <div className="lg:p-8">
          <div className="mx-auto flex w-full flex-col justify-center space-y-6 sm:w-[350px]">
            <div className="flex flex-col space-y-2 text-center mb-1">
              <h1 className="text-3xl text-primary font-semibold tracking-tight">
                Log in to RoopCom
              </h1>
            </div>
            <UserAuthForm />
            <p className="text-center text-xs text-muted-foreground">
              By clicking continue, you agree to our{" "}
              <Link href="/terms" className="hover:font-semibold text-primary">
                Terms of Service
              </Link>{" "}
              and{" "}
              <Link
                href="/privacy"
                className="hover:font-semibold text-primary"
              >
                Privacy Policy
              </Link>
              .
            </p>
          </div>
        </div>

        <div className="relative hidden h-full flex-col bg-muted  p-10 text-white dark:border-r lg:flex">
          <div className="absolute inset-0 bg-gradient-to-r from-[#24358E] via-[#E44C53] to-[#24358E] bg-size-200 bg-pos-0 hover:bg-pos-100 transition-all duration-1000" />
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
