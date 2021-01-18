.class final Lcom/germainz/crappalinks/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/germainz/crappalinks/ConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/germainz/crappalinks/ConfirmDialog;

.field private synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/germainz/crappalinks/ConfirmDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/germainz/crappalinks/ConfirmDialog$1;->this$0:Lcom/germainz/crappalinks/ConfirmDialog;

    iput-object p2, p0, Lcom/germainz/crappalinks/ConfirmDialog$1;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 18
    iget-object v1, p0, Lcom/germainz/crappalinks/ConfirmDialog$1;->this$0:Lcom/germainz/crappalinks/ConfirmDialog;

    invoke-virtual {v1}, Lcom/germainz/crappalinks/ConfirmDialog;->finish()V

    .line 19
    packed-switch p2, :pswitch_data_0

    .line 25
    :goto_0
    return-void

    .line 21
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/germainz/crappalinks/ConfirmDialog$1;->val$uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "crappalinks"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/germainz/crappalinks/ConfirmDialog$1;->this$0:Lcom/germainz/crappalinks/ConfirmDialog;

    invoke-virtual {v1, v0}, Lcom/germainz/crappalinks/ConfirmDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
