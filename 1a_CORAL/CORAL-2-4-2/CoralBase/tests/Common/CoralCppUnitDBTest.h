// $Id: CoralCppUnitDBTest.h,v 1.19 2013-03-13 13:04:06 avalassi Exp $
#ifndef COMMON_CORALCPPUNITDBTEST_H
#define COMMON_CORALCPPUNITDBTEST_H 1

// Include files
#include <cstdio>
#include <cstdlib>
#include "CoralCommon/Utilities.h"
#include "RelationalAccess/ConnectionService.h"
#include "RelationalAccess/IConnectionServiceConfiguration.h"
#include "RelationalAccess/ISessionProxy.h"

// Local include files
#include "CoralCppUnitTest.h"

// Debug
#ifdef CORALCPPUNITDBTESTDEBUG
static const bool _CORALCPPUNITDBTEST_DEBUG_ = true;
#else
static const bool _CORALCPPUNITDBTEST_DEBUG_ = false;
#endif
#define DEBUGSTART                                              \
  std::string prefix = source + ( source == "" ? "" : " -> " ); \
  if ( _CORALCPPUNITDBTEST_DEBUG_ )                             \
    std::cout << ( prefix == "" ? "\n" : "" ) << prefix << tag  \
              << " START" << std::endl
#define DEBUGOK                                 \
  if ( _CORALCPPUNITDBTEST_DEBUG_ )             \
    std::cout << prefix << tag                  \
              << " DONE!" << std::endl
#define DEBUGFAIL                               \
  if ( _CORALCPPUNITDBTEST_DEBUG_ )             \
    std::cout << prefix << tag                  \
              << " FAILED" << std::endl

namespace coral
{

  //--------------------------------------------------------------------------

  /** @class CoralCppUnitDBTest
   *
   *  Based on CoolDBUnitTest, the base class for COOL tests that use
   *  a database. Copied and reused for CORAL unit and integration tests.
   *
   *  @author Marco Clemencic and Andrea Valassi 2006-03-13 (COOL)
   *  @author Andrea Valassi                     2010-09-30 (CORAL)
   *///
  class CoralCppUnitDBTest : public CoralCppUnitTest
  {

  public:

    /// Standard constructor
    CoralCppUnitDBTest( bool getSvc = true )
    {
      // Determine the CORAL table prefix for this platform
      // ... to do ...

      // Load the service if required.
      // Avoid mixture between unavoidable messages and test progress output.
      if ( getSvc ) connSvc();

      // Do nothing about s_sessXX (some tests open a session themeselves).
    }

    /// Destructor
    virtual ~CoralCppUnitDBTest()
    {
      /*
      // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
      // Needed for sqlite else it hangs?
      if ( SessRW().get() ) SessRW().reset();
      if ( SessRO().get() ) SessRO().reset();
      *///
    }

    // Parse the command-line arguments
    // You may redefine this static method in derived classes if needed
    inline static bool ParseArguments( int argc, char* argv[] );

    // Validate the backend choice in the command-line arguments
    inline static bool ValidateBackends( const std::string& arg );

    // Build the connection string for the given backend and mode (no checks!)
    inline static const std::string BuildUrl( const std::string& db, bool readOnly = false );

    static const std::string getUrlRW()
    {
      return UrlRW();
    }

    static const std::string getUrlRO()
    {
      return UrlRO();
    }

  protected:

    /// Sleep n seconds (ORA-01466 workaround).
    void sleep( int n )
    {
      coral::sleepSeconds(n);
    }

    /// Return a reference to the ConnectionService.
    IConnectionService& connSvc()
    {
      static ConnectionService s_connSvc;
      return s_connSvc;
    }

    // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
    /*
    /// Open a session (set the pointer "s_sess").
    void connect( bool readOnly = false,
                  const std::string& source = "" )
    {
      std::string tag = "Connect";
      DEBUGSTART;
      try
      {
        if ( !readOnly )
        {
          SessRW().reset( connSvc().connect( UrlRW(), Update ) );
        }
        else
        {
          SessRO().reset( connSvc().connect( UrlRO(), ReadOnly ) );
        }
      }
      catch (...)
      {
        DEBUGFAIL;
        throw;
      }
      DEBUGOK;
    }
    *///

    // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
    /*
    /// Close the session (reset the pointer "s_sess").
    void disconnect( bool readOnly = false,
                     const std::string& source = "" )
    {
      std::string tag = "Disconnect";
      DEBUGSTART;
      if ( !readOnly )
      {
        if ( SessRW().get() ) SessRW().reset();
      }
      else
      {
        if ( SessRO().get() ) SessRO().reset();
      }
      DEBUGOK;
    }
    *///

    // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
    /*
    /// Purge coral ConnectionPool.
    void forceDisconnect( bool readOnly = false,
                          const std::string& source = "" )
    {
      std::string tag = "ForceDisconnect";
      DEBUGSTART;
      disconnect( readOnly, prefix + tag );
      static bool first = true;
      if ( first ) {
        connSvc().configuration().setConnectionTimeOut(-1);
        first = false;
      }
      connSvc().purgeConnectionPool();
      DEBUGOK;
    }
    *///

    static std::string& UrlRW()
    {
      static std::string s_urlRW = "";
      return s_urlRW;
    }

    static std::string& UrlRO()
    {
      static std::string s_urlRO = "";
      return s_urlRO;
    }

    // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
    /*
    static std::auto_ptr<ISessionProxy>& SessRW()
    {
      static std::auto_ptr<ISessionProxy> s_sessRW;
      return s_sessRW;
    }
    *///

    // -- Remove SessRO and SessRW in CoralCppUnitDBTest (bug #98321) --
    /*
    static std::auto_ptr<ISessionProxy>& SessRO()
    {
      static std::auto_ptr<ISessionProxy> s_sessRO;
      return s_sessRO;
    }
    *///

  };

  //--------------------------------------------------------------------------

  inline bool CoralCppUnitDBTest::ParseArguments( int argc, char** argv )
  {
    if ( argc == 1 || argc > 3 ||
         !ValidateBackends( argv[1] ) ||
         ( argc == 3 && std::string( argv[2] ) == "-h"  ) )
    {
      std::cout << "Usage : " << argv[0]
                << " writer[:reader]"
                << " [-h|CppUnit_subtest_path]" << std::endl;
      std::cout << "Allowed values for writer[:reader] : " << std::endl
                << "  oracle[:oracle]" << std::endl
                << "  oracle:frontier" << std::endl
                << "  oracle:coral" << std::endl
                << "  oracle:proxy" << std::endl
                << "  mysql[:mysql]" << std::endl
                << "  mysql:coral" << std::endl
                << "  sqlite[:sqlite]" << std::endl;
      return false;
    }
    if ( argc == 3 ) TestPath() = argv[2];
    return true;
  }

  //--------------------------------------------------------------------------

  inline bool CoralCppUnitDBTest::ValidateBackends( const std::string& arg )
  {
    if ( arg == "oracle" || arg == "oracle:oracle" )
    {
      UrlRW() = BuildUrl( "Oracle", false );
      UrlRO() = BuildUrl( "Oracle", true );
      return true;
    }
    else if ( arg == "oracle:frontier" )
    {
      UrlRW() = BuildUrl( "Oracle", false );
      UrlRO() = BuildUrl( "Frontier", true );
      return true;
    }
    else if ( arg == "oracle:coral" )
    {
      UrlRW() = BuildUrl( "Oracle", false );
      UrlRO() = BuildUrl( "CoralServer-Oracle", true );
      return true;
    }
    else if ( arg == "oracle:proxy" )
    {
      UrlRW() = BuildUrl( "Oracle", false );
      UrlRO() = BuildUrl( "CoralServerProxy-Oracle", true );
      return true;
    }
    else if ( arg == "mysql" || arg == "mysql:mysql" )
    {
      UrlRW() = BuildUrl( "MySQL", false );
      UrlRO() = BuildUrl( "MySQL", true );
      return true;
    }
    else if ( arg == "mysql:coral" )
    {
      UrlRW() = BuildUrl( "MySQL", false );
      UrlRO() = BuildUrl( "CoralServer-MySQL", true );
      return true;
    }
    else if ( arg == "sqlite" || arg == "sqlite:sqlite" )
    {
      UrlRW() = BuildUrl( "SQLite", false );
      UrlRO() = BuildUrl( "SQLite", true );
      return true;
    }
    else return false;
  }

  //--------------------------------------------------------------------------

  inline const std::string
  CoralCppUnitDBTest::BuildUrl( const std::string& db, bool readOnly )
  {
    if ( db != "SQLite" )
      return "CORAL-" + db + "-sftnight/" + ( readOnly ? "reader" : "admin" );
    else
      // Use unique SQLite database names across platforms/slots (bug #103484)
      return "sqlite_file:/tmp/" + std::string( ::getenv( "USER" ) ) + "_" + BuildUniqueTableName( "" ) + ".db";
  }

//--------------------------------------------------------------------------

}

#endif // COMMON_CORALCPPUNITDBTEST_H