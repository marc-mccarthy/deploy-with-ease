const BASE_URL = "https://api.apicagent.com";

const fetchUserInfo = async (userAgent) => {
  const encodedUserAgent = encodeURIComponent(userAgent);
  const url = `${BASE_URL}/?ua=${encodedUserAgent}`;
  const response = await fetch(url);
  return await response.json();
};

export default fetchUserInfo;
