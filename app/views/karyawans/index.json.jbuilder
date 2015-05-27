json.array!(@karyawans) do |karyawan|
  json.extract! karyawan, :id, :nip, :nama, :alamat
  json.url karyawan_url(karyawan, format: :json)
end
