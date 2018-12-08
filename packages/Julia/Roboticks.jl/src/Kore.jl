
struct VecE3 
    x::Float64
    y::Float64
    z::Float64
end

Vec3()

Base.show(io::IO, a::VecE3) = @printf(io, "VecE3(%.3f, %.3f, %.3f)", a.x, a.y, a.z)

struct SO3
    # SO3()
    const matrix::Array{Float64,3}
end


function NearZero(z)::Bool
    """Determines whether a scalar is small enough to be treated as zero

    :param z: A scalar input to check
    :return: True if z is close to zero, false otherwise

    Example Input:
        z = -1e-7
    Output:
        True
    """
    return abs(z) < 1e-6
end

function Normalize(V)
    """Normalizes a vector

    :param V: A vector
    :return: A unit vector pointing in the same direction as z

    Example Input:
        V = np.array([1, 2, 3])
    Output:
        np.array([0.26726124, 0.53452248, 0.80178373])
    """
    # return V / np.linalg.norm(V)
end