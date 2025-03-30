#include "snappy.h"
#include <iostream>
#include <string>

// crypto++
#include <cryptopp/aes.h>
#include <cryptopp/modes.h>
#include <cryptopp/filters.h>
#include <cryptopp/base64.h>

std::string encrypt(std::string plain, std::string key, std::string iv, bool base64)
{
    std::string encrypted;
    try
    {
        CryptoPP::byte KEY[CryptoPP::AES::DEFAULT_KEYLENGTH] = {
            0,
        };
        CryptoPP::byte IV[CryptoPP::AES::BLOCKSIZE] = {
            0x00,
        };
        for (int i = 0; i < key.length() && i < CryptoPP::AES::DEFAULT_KEYLENGTH; i++)
            KEY[i] = key[i];
        for (int i = 0; i < iv.length() && i < CryptoPP::AES::BLOCKSIZE; i++)
            IV[i] = iv[i];
        CryptoPP::AES::Encryption encryption(KEY, CryptoPP::AES::DEFAULT_KEYLENGTH);
        CryptoPP::CBC_Mode_ExternalCipher::Encryption mode(encryption, IV);
        CryptoPP::StreamTransformationFilter encryptor(mode, new CryptoPP::StringSink(encrypted));
        encryptor.Put(reinterpret_cast<const unsigned char *>(plain.c_str()), plain.length());
        encryptor.MessageEnd();
        if (base64)
        {
            std::string encoded;
            CryptoPP::StringSource(encrypted, true, new CryptoPP::Base64Encoder(new CryptoPP::StringSink(encoded)));
            encrypted = encoded;
        }
    }
    catch (...)
    {
        encrypted.clear();
    }
    return encrypted;
}

std::string decrypt(std::string cipher, std::string key, std::string iv, bool base64)
{
    std::string decrypted;
    try
    {
        CryptoPP::byte KEY[CryptoPP::AES::DEFAULT_KEYLENGTH] = {
            0,
        };
        CryptoPP::byte IV[CryptoPP::AES::BLOCKSIZE] = {
            0x00,
        };
        for (int i = 0; i < key.length() && i < CryptoPP::AES::DEFAULT_KEYLENGTH; i++)
            KEY[i] = key[i];
        for (int i = 0; i < iv.length() && i < CryptoPP::AES::BLOCKSIZE; i++)
            IV[i] = iv[i];
        if (base64)
        {
            std::string decoded;
            CryptoPP::StringSource(cipher, true, new CryptoPP::Base64Decoder(new CryptoPP::StringSink(decoded)));
            cipher = decoded;
        }
        CryptoPP::AES::Decryption decryption(KEY, CryptoPP::AES::DEFAULT_KEYLENGTH);
        CryptoPP::CBC_Mode_ExternalCipher::Decryption mode(decryption, IV);
        CryptoPP::StreamTransformationFilter decryptor(mode, new CryptoPP::StringSink(decrypted));
        decryptor.Put(reinterpret_cast<const unsigned char *>(cipher.c_str()), cipher.size());
        decryptor.MessageEnd();
    }
    catch (...)
    {
        decrypted.clear();
    }
    return decrypted;
}