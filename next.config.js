/** @type {import('next').NextConfig} */

const withNextIntl = require("next-intl/plugin")("./src/i18n.ts");

const nextConfig = {
  images: {
    remotePatterns: [
      {
        // protocol: 'https',
        hostname: "roopcom.com",
        // port: '',
        // pathname: '/account123/**',
      },
    ],
  },
  experimental: {
    serverActions: true,
  },
};

module.exports = withNextIntl({ ...nextConfig });
