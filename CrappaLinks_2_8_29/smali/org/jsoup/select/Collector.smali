.class public Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;

.field private final eval:Lorg/jsoup/select/Evaluator;

.field private final root:Lorg/jsoup/nodes/Element;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "elements"    # Lorg/jsoup/select/Elements;
    .param p3, "eval"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/jsoup/select/Collector;->root:Lorg/jsoup/nodes/Element;

    .line 35
    iput-object p2, p0, Lorg/jsoup/select/Collector;->elements:Lorg/jsoup/select/Elements;

    .line 36
    iput-object p3, p0, Lorg/jsoup/select/Collector;->eval:Lorg/jsoup/select/Evaluator;

    .line 37
    return-void
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 3
    .param p0, "eval"    # Lorg/jsoup/select/Evaluator;
    .param p1, "root"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 23
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 24
    .local v0, "elements":Lorg/jsoup/select/Elements;
    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/select/Collector;

    invoke-direct {v2, p1, v0, p0}, Lorg/jsoup/select/Collector;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 40
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 41
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 42
    .local v0, "el":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/select/Collector;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v2, p0, Lorg/jsoup/select/Collector;->root:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lorg/jsoup/select/Collector;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v1, v0}, Lorg/jsoup/select/Elements;->add(Lorg/jsoup/nodes/Element;)Z

    .line 45
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 49
    return-void
.end method
