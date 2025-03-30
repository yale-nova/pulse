//
// Created by yupeng on 1/19/23.
//

#ifndef PC_LIBPC_SRC_PC_UTILS_RAND_UTIL_H_
#define PC_LIBPC_SRC_PC_UTILS_RAND_UTIL_H_

#include <string>
#include <chrono>
#include <random>

namespace pc
{
	namespace utils
	{

		static std::mt19937 rng(static_cast<uint64_t>(std::chrono::steady_clock::now().time_since_epoch().count()));

		inline long long getRand(long long l, long long r)
		{
			std::uniform_int_distribution<long long> uid(l, r);
			return uid(rng);
		}

		static inline std::string gen_random(const size_t len)
		{
		  static const char alphanum[] =
		      "0123456789"
		      "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		      "abcdefghijklmnopqrstuvwxyz";
		  std::string tmp_s;
		  tmp_s.reserve(len);
		
		  for (size_t i = 0; i < len; ++i)
		  {
		    tmp_s += alphanum[static_cast<size_t>(rand()) % (sizeof(alphanum) - 1)];
		  }
		
		  return tmp_s;
		}

	}

}

#endif // PC_LIBPC_SRC_PC_UTILS_RAND_UTIL_H_
