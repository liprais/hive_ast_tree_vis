module HiveInternal
  require 'java'
  lib = './libs/'
  Dir.entries(lib).map { |jar| require lib + jar if File.extname(jar) == '.jar' }
  def dependencyHandle(&block)
    java_import org.apache.hadoop.hive.ql.lib.DefaultGraphWalker
    java_import org.apache.hadoop.hive.ql.lib.DefaultRuleDispatcher
    java_import org.apache.hadoop.hive.ql.lib.Dispatcher
    java_import org.apache.hadoop.hive.ql.lib.GraphWalker
    java_import org.apache.hadoop.hive.ql.lib.Node
    java_import org.apache.hadoop.hive.ql.lib.NodeProcessor
    java_import org.apache.hadoop.hive.ql.lib.NodeProcessorCtx
    java_import org.apache.hadoop.hive.ql.lib.Rule
    java_import org.apache.hadoop.hive.ql.parse.ASTNode
    java_import org.apache.hadoop.hive.ql.parse.BaseSemanticAnalyzer
    java_import org.apache.hadoop.hive.ql.parse.HiveParser
    java_import org.apache.hadoop.hive.ql.parse.ParseDriver
    java_import org.apache.hadoop.hive.ql.parse.ParseException
    java_import org.apache.hadoop.hive.ql.parse.SemanticException
    java_import org.apache.hadoop.hive.ql.tools.LineageInfo
    java_import org.apache.hadoop.hive.ql.optimizer.lineage.ExprProcCtx
    java_import org.apache.hadoop.hive.ql.optimizer.lineage.ExprProcFactory
    java_import org.apache.hadoop.hive.ql.optimizer.lineage.Generator
    java_import org.apache.hadoop.hive.ql.optimizer.lineage.LineageCtx
    java_import org.apache.hadoop.hive.ql.optimizer.lineage.OpProcFactory
    java_import org.apache.hadoop.hive.ql.parse.ParseUtils
    yield
  end
end






