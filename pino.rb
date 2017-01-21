class Pino < Array
    def pop
        n = super
        if n == nil
            raise RuntimeError
        end
        n
    end
end
