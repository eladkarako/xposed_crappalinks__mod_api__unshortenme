.class final Lcom/germainz/crappalinks/ConfirmDialog$2;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/germainz/crappalinks/ConfirmDialog;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/germainz/crappalinks/ConfirmDialog$2;->this$0:Lcom/germainz/crappalinks/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/germainz/crappalinks/ConfirmDialog$2;->this$0:Lcom/germainz/crappalinks/ConfirmDialog;

    invoke-virtual {v0}, Lcom/germainz/crappalinks/ConfirmDialog;->finish()V

    .line 39
    return-void
.end method
