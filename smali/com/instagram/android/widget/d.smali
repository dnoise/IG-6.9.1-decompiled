.class final Lcom/instagram/android/widget/d;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/l/b/a;

.field final synthetic b:Lcom/instagram/android/widget/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/a;Lcom/instagram/l/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/widget/d;->b:Lcom/instagram/android/widget/a;

    iput-object p2, p0, Lcom/instagram/android/widget/d;->a:Lcom/instagram/l/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    iget-object v0, p0, Lcom/instagram/android/widget/d;->a:Lcom/instagram/l/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/l/b/a;->h(Z)V

    .line 56
    iget-object v0, p0, Lcom/instagram/android/widget/d;->b:Lcom/instagram/android/widget/a;

    invoke-static {v0}, Lcom/instagram/android/widget/a;->a(Lcom/instagram/android/widget/a;)V

    .line 57
    return-void
.end method
