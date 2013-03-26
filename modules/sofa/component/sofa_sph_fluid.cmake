cmake_minimum_required(VERSION 2.8)

project("SofaSphFluid")

include(${SOFA_CMAKE_DIR}/pre.cmake)

set(HEADER_FILES

    initSPHFluid.h 
    container/SpatialGridContainer.h 
    container/SpatialGridContainer.inl 
    forcefield/SPHFluidForceField.h 
    forcefield/SPHFluidForceField.inl 
    mapping/SPHFluidSurfaceMapping.h 
    mapping/SPHFluidSurfaceMapping.inl 
    misc/ParticleSink.h 
    misc/ParticleSource.h 
    forcefield/ParticlesRepulsionForceField.h 
    forcefield/ParticlesRepulsionForceField.inl

    )
    
set(SOURCE_FILES

    initSPHFluid.cpp 
    container/SpatialGridContainer.cpp 
    forcefield/SPHFluidForceField.cpp 
    mapping/SPHFluidSurfaceMapping.cpp 
    misc/ParticleSink.cpp 
    misc/ParticleSource.cpp 
    forcefield/ParticlesRepulsionForceField.cpp

    )
    
add_library(${PROJECT_NAME} SHARED ${HEADER_FILES} ${SOURCE_FILES})

set(COMPILE_DEFINES "SOFA_BUILD_SPH_FLUID")
set(LINK_DEPENDENCIES SofaBaseMechanics)

include(${SOFA_CMAKE_DIR}/post.cmake)