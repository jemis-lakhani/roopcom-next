import { NextResponse } from 'next/server'

import type { NextRequest } from 'next/server'
import maintenanceMiddleware from './middlewares/maintenance-middleware';
import nextIntlMiddleware from './middlewares/next-intl-middleware';
import supabaseMiddleware from './middlewares/supabase-middleware';

const middlewares = [nextIntlMiddleware, maintenanceMiddleware, supabaseMiddleware]

export default async function middleware(request: NextRequest) {
  for (const fn of middlewares) {
    const response = await fn(request);
    if (response) return response;
  }
  return NextResponse.next();
}

export const config = {
  matcher: ['/((?!api|_next|_vercel|.*\\..*).*)']
};