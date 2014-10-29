.class public final enum Lcom/instagram/a/i;
.super Ljava/lang/Enum;
.source "ActionBarService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/a/i;

.field public static final enum b:Lcom/instagram/a/i;

.field public static final enum c:Lcom/instagram/a/i;

.field private static final synthetic e:[Lcom/instagram/a/i;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    new-instance v0, Lcom/instagram/a/i;

    const-string v1, "SEARCH"

    sget v2, Lcom/facebook/au;->nav_search:I

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/a/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/a/i;->a:Lcom/instagram/a/i;

    .line 380
    new-instance v0, Lcom/instagram/a/i;

    const-string v1, "OVERFLOW"

    sget v2, Lcom/facebook/au;->nav_more:I

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/a/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    .line 381
    new-instance v0, Lcom/instagram/a/i;

    const-string v1, "NEXT"

    sget v2, Lcom/facebook/au;->nav_arrow_next:I

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/a/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/a/i;->c:Lcom/instagram/a/i;

    .line 377
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/a/i;

    sget-object v1, Lcom/instagram/a/i;->a:Lcom/instagram/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/a/i;->b:Lcom/instagram/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/a/i;->c:Lcom/instagram/a/i;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/a/i;->e:[Lcom/instagram/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 386
    iput p3, p0, Lcom/instagram/a/i;->d:I

    .line 387
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/a/i;
    .locals 1
    .parameter "name"

    .prologue
    .line 377
    const-class v0, Lcom/instagram/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/a/i;

    return-object v0
.end method

.method public static values()[Lcom/instagram/a/i;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/instagram/a/i;->e:[Lcom/instagram/a/i;

    invoke-virtual {v0}, [Lcom/instagram/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/a/i;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/instagram/a/i;->d:I

    return v0
.end method
