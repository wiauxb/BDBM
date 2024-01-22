import lib.mutator as mutator

addrs = mutator.find_maybe_string_addresses("../binrec_module/s2e/projects/hello/s2e-out/recovered.bc")
for addr in addrs:
    print(addr)