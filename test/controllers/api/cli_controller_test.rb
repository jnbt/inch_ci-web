require 'test_helper'

class ApiCliControllerTest < ActionController::TestCase
  def setup
    @controller = Api::CliController.new
  end

  test "should not error on GET" do
    get :run
    assert_response :success
  end

  test "should run with valid params" do
    params = {"language" => "elixir", "objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}], "controller"=>"api", "action"=>"cli", "api"=>{"objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}]}}
    post :run, params
    assert_response :success
    assert_match /Grade distribution \(undocumented, C, B, A\)\:/, response.body
  end

  test "should run suggest" do
    params = {"language" => "elixir", args: ["suggest"], "objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}], "controller"=>"api", "action"=>"cli", "api"=>{"objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}]}}
    post :run, params
    assert_response :success
    assert_match /Grade distribution \(undocumented, C, B, A\)\:/, response.body
  end

  test "should run list" do
    params = {"language" => "elixir", args: ["list"], "objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}], "controller"=>"api", "action"=>"cli", "api"=>{"objects"=>[{"object_type"=>"ModuleObject", "id"=>"InchEx", "module"=>"Elixir.InchEx", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Config", "module"=>"Elixir.InchEx.Config", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Formatter", "module"=>"Elixir.InchEx.Docs.Formatter", "moduledoc"=>"Provide JSON-formatted documentation\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever", "module"=>"Elixir.InchEx.Docs.Retriever", "moduledoc"=>"Functions to extract documentation information from modules.\n", "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Docs.Retriever.Error", "module"=>"Elixir.InchEx.Docs.Retriever.Error", "moduledoc"=>nil, "source"=>nil, "type"=>"exception", "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.FunctionObject", "module"=>"Elixir.InchEx.FunctionObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.ModuleObject", "module"=>"Elixir.InchEx.ModuleObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Local", "module"=>"Elixir.InchEx.Reporter.Local", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.Reporter.Remote", "module"=>"Elixir.InchEx.Reporter.Remote", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"InchEx.TypeObject", "module"=>"Elixir.InchEx.TypeObject", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"ModuleObject", "id"=>"Mix.Tasks.Inch", "module"=>"Elixir.Mix.Tasks.Inch", "moduledoc"=>nil, "source"=>nil, "type"=>nil, "typespecs"=>nil}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx", "arity"=>3, "doc"=>false, "id"=>"generate_docs/3", "name"=>"generate_docs", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Formatter", "arity"=>2, "doc"=>"Generate JSON documentation for the given modules\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified directory\n", "id"=>"docs_from_dir/2", "name"=>"docs_from_dir", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the specified list of files\n", "id"=>"docs_from_files/2", "name"=>"docs_from_files", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever", "arity"=>2, "doc"=>"Extract documentation from all modules in the list `modules`\n", "id"=>"docs_from_modules/2", "name"=>"docs_from_modules", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.exception/1`.", "id"=>"exception/1", "name"=>"exception", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["exception", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Keyword", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Docs.Retriever.Error", "arity"=>1, "doc"=>"Callback implementation of `Exception.message/1`.", "id"=>"message/1", "name"=>"message", "signature"=>[], "source"=>nil, "specs"=>[["::", {"line"=>19}, [["message", {"line"=>19}, [[[".", {"line"=>19}, ["Elixir.Exception", "t"]], {"line"=>19}, []]]], [[".", {"line"=>19}, ["Elixir.String", "t"]], {"line"=>19}, []]]]], "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Local", "arity"=>1, "doc"=>"  Runs inch locally, if installed. If you want to force usage of a particular\n  inch installation, set INCH_PATH environment variable to it.\n\n    export INCH_PATH=/home/rrrene/projects/inch\n", "id"=>"run/1", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"InchEx.Reporter.Remote", "arity"=>2, "doc"=>"  Runs inch remotely, if already invented.\n", "id"=>"run/2", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}, {"object_type"=>"FunctionObject", "module_id"=>"Mix.Tasks.Inch", "arity"=>4, "doc"=>false, "id"=>"run/4", "name"=>"run", "signature"=>[], "source"=>nil, "specs"=>nil, "type"=>"def"}]}}
    post :run, params
    assert_response :success
    refute_match /Grade distribution \(undocumented, C, B, A\)\:/, response.body
    assert_match /This output omitted/, response.body
  end

  test "should run nothing with invalid args" do
    %w(console diff inspect).each do |arg|
      params = {"language" => "elixir", args: [arg], "objects" => []}
      post :run, params
      assert_response :success
      assert_match /error/i, response.body, "should error for arg: #{arg}"
    end
  end

  test "should run with invalid params" do
    params = {"language" => ""}
    post :run, params
    assert_response :success
    assert_match /error/i, response.body
  end
end
