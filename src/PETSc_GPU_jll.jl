# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PETSc_GPU_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("PETSc_GPU")
JLLWrappers.@generate_main_file("PETSc_GPU", Base.UUID("69592d17-8cff-5f55-9946-2a616b995a3c"))
end  # module PETSc_GPU_jll
