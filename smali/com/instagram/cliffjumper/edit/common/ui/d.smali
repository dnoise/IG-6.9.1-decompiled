.class final Lcom/instagram/cliffjumper/edit/common/ui/d;
.super Ljava/lang/Object;
.source "EffectPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/d;->b:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    iput p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/d;->b:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/d;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->scrollTo(II)V

    .line 75
    return-void
.end method
