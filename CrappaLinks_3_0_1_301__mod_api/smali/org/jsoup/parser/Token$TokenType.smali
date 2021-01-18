.class final Lorg/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/parser/Token$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$5373b3b9:[I

.field public static final enum Character$3b9875e2:I

.field public static final enum Comment$3b9875e2:I

.field public static final enum Doctype$3b9875e2:I

.field public static final enum EOF$3b9875e2:I

.field public static final enum EndTag$3b9875e2:I

.field public static final enum StartTag$3b9875e2:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 268
    const/4 v0, 0x1

    sput v0, Lorg/jsoup/parser/Token$TokenType;->Doctype$3b9875e2:I

    .line 269
    const/4 v0, 0x2

    sput v0, Lorg/jsoup/parser/Token$TokenType;->StartTag$3b9875e2:I

    .line 270
    const/4 v0, 0x3

    sput v0, Lorg/jsoup/parser/Token$TokenType;->EndTag$3b9875e2:I

    .line 271
    const/4 v0, 0x4

    sput v0, Lorg/jsoup/parser/Token$TokenType;->Comment$3b9875e2:I

    .line 272
    const/4 v0, 0x5

    sput v0, Lorg/jsoup/parser/Token$TokenType;->Character$3b9875e2:I

    .line 273
    sput v1, Lorg/jsoup/parser/Token$TokenType;->EOF$3b9875e2:I

    .line 267
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->$VALUES$5373b3b9:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static values$3ccc718()[I
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->$VALUES$5373b3b9:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
