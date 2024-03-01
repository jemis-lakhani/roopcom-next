
import createIntlMiddleware from 'next-intl/middleware';
import { NextFetchEvent, NextMiddleware, NextRequest } from "next/server";

const locales = ['en'];

export const intlMiddleware = createIntlMiddleware({
    locales,
    defaultLocale: locales[0]
});

export default async function nextIntlMiddleware(request: NextRequest) {
    const res = intlMiddleware(request)
    return res
}