.class final Lorg/jsoup/nodes/Node$1;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Node;->setBaseUri(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$baseUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p2, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jsoup/nodes/Node$1;->val$baseUri:Ljava/lang/String;

    iput-object v0, p1, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 148
    return-void
.end method
