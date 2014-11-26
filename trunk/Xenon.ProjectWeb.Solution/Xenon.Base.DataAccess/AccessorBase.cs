using BLToolkit.Aspects;
using BLToolkit.DataAccess;
using BLToolkit.Data;
using BLToolkit.Reflection;
using System.Configuration;
namespace Xenon.Base.DataAccess
{
    [Log, Counter]
    public abstract class AccessorBase<T> : DataAccessor where T :AccessorBase<T>
    {
        #region Overrides

        [NoInterception]
        protected override DbManager CreateDbManager()
        {
            try
            {
                return new DbManager("Xenon.ConnectionString");
            }
            catch (System.Exception ex)
            {

                throw ex;
            }

        }

        #endregion
        #region CreateInstance

        public static T CreateInstance()
        {
            return TypeAccessor<T>.CreateInstance();
        }

        #endregion
        #region Query

        [Log, Counter]
        public abstract class CoreQuery : SqlQuery
        {
            [NoInterception]
            protected override DbManager CreateDbManager()
            {
                return new DbManager("Xenon.ConnectionString");
            }
        }
        public CoreQuery Query
        {
            get { return TypeAccessor<CoreQuery>.CreateInstance(); }
        }

        #endregion
    }
}
