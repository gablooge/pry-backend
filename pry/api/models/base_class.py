from sqlalchemy.orm import DeclarativeBase, declared_attr

# Documentation: https://docs.sqlalchemy.org/en/20/orm/mapping_styles.html


class Base(DeclarativeBase):
    @declared_attr  # type: ignore[arg-type]
    def __tablename__(cls) -> str:
        """
        Overwrite tablename

        :return: Tablename in lowercase
        """
        return cls.__name__.lower()
